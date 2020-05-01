.class public final Lo/ZR$Activity;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-wide p1, p0, Lo/ZR$Activity;->c:J

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lo/ZR$Activity;->c:J

    return-wide v0
.end method
