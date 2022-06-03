#!/usr/bin/env python3.8

import calendar as cal
import datetime as dt
from pathlib import Path

moths = list(cal.month_name[1:])
days = list(cal.day_name)

for i, mes in enumerate(moths):
    for dia in days:
        Path(f'backup/{i+1}.{mes}/{dia}').mkdir(parents=True, exist_ok=True)
