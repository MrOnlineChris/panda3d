// Filename: pStatGPUTimer.I
// Created by:  rdb (21Aug14)
//
////////////////////////////////////////////////////////////////////
//
// PANDA 3D SOFTWARE
// Copyright (c) Carnegie Mellon University.  All rights reserved.
//
// All use of this software is subject to the terms of the revised BSD
// license.  You should have received a copy of this license along
// with this source code in a file named "LICENSE."
//
////////////////////////////////////////////////////////////////////


#ifdef DO_PSTATS

////////////////////////////////////////////////////////////////////
//     Function: PStatGPUTimer::Constructor
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
INLINE PStatGPUTimer::
PStatGPUTimer(GraphicsStateGuardian *gsg, PStatCollector &collector) :
  PStatTimer(collector),
  _gsg(gsg)
{
  if (gsg->get_timer_queries_active()) {
    gsg->issue_timer_query(collector.get_index());
    //cerr << "issuing " << collector << " active " << collector.is_active() << "\n";
  }
}

////////////////////////////////////////////////////////////////////
//     Function: PStatGPUTimer::Constructor
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
INLINE PStatGPUTimer::
PStatGPUTimer(GraphicsStateGuardian *gsg, PStatCollector &collector, Thread *current_thread) :
  PStatTimer(collector, current_thread),
  _gsg(gsg)
{
  if (gsg->get_timer_queries_active()) {
    gsg->issue_timer_query(collector.get_index());
  }
}

////////////////////////////////////////////////////////////////////
//     Function: PStatGPUTimer::Destructor
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
INLINE PStatGPUTimer::
~PStatGPUTimer() {
  if (_gsg->get_timer_queries_active()) {
    _gsg->issue_timer_query(_collector.get_index() | 0x8000);
  }
}

#endif
