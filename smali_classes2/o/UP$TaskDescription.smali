.class public final Lo/UP$TaskDescription;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/UP$TaskDescription;->a:Z

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lo/UP$TaskDescription;->a:Z

    return v0
.end method
