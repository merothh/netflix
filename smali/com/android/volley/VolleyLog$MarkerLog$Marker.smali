.class Lcom/android/volley/VolleyLog$MarkerLog$Marker;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final thread:J

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    .line 113
    iput-wide p2, p0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J

    .line 114
    iput-wide p4, p0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 115
    return-void
.end method
