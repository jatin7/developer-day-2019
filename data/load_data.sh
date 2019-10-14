#!/usr/bin/env bash
cqlsh -e "CREATE KEYSPACE killrvideo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};"
cqlsh -k killrvideo -f schema/schema.cql
cqlsh -k killrvideo -e "COPY users FROM 'csv/users.csv';"
cqlsh -k killrvideo -e "COPY videos_by_tag FROM 'csv/videos_by_tag.csv';"
cqlsh -k killrvideo -e "COPY user_credentials FROM 'csv/user_credentials.csv';"
cqlsh -k killrvideo -e "COPY tags_by_letter FROM 'csv/tags_by_letter.csv';"
cqlsh -k killrvideo -e "COPY video_playback_stats FROM 'csv/video_playback_stats.csv';"
cqlsh -k killrvideo -e "COPY latest_videos FROM 'csv/latest_videos.csv';"
cqlsh -k killrvideo -e "COPY video_ratings_by_user FROM 'csv/video_ratings_by_user.csv';"
cqlsh -k killrvideo -e "COPY comments_by_user FROM 'csv/comments_by_user.csv';"
cqlsh -k killrvideo -e "COPY videos FROM 'csv/videos.csv';"
cqlsh -k killrvideo -e "COPY comments_by_video FROM 'csv/comments_by_video.csv';"
cqlsh -k killrvideo -e "COPY user_videos FROM 'csv/user_videos.csv';"
