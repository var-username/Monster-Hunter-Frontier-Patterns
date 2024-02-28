#include <type/time.pat>

/// Seasonal Event timing
struct Event_Time {
    u32;
    type::time_t;
    type::time_t;
} [[static]];

Event_Time seaonalEvents[136] @ header.ptrs.seasonalEventTiming;
