---
title: Macros
description: >
    Random useful macros
weight: 1
---

## Teleport to graveyard

Starts the 60 second timer to kick you out of an instance. Spam it a few times until you see
`You leave the group.` in chat.

```text
/script C_PartyInfo.InviteUnit("aaaaaaaaaaaaaa"); C_Timer.After(1, function() C_PartyInfo.LeaveParty(1) end)
```
