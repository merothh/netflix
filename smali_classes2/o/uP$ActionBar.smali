.class final Lo/uP$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final d:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-wide p1, p0, Lo/uP$ActionBar;->d:J

    return-void
.end method

.method static synthetic e(Lo/uP$ActionBar;)J
    .locals 2

    .line 301
    iget-wide v0, p0, Lo/uP$ActionBar;->d:J

    return-wide v0
.end method
