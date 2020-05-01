.class public final Lo/EW$TaskDescription;
.super Lo/EW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lo/EW;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/EW$TaskDescription;->d:Z

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/EW$TaskDescription;->d:Z

    return v0
.end method
