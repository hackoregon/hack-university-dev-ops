import sys
import os

sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

from app import db

db.create_all()