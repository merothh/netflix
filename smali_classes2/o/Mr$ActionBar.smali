.class public final Lo/Mr$ActionBar;
.super Lo/Mr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lo/Mr;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/Mr$ActionBar;->d:Z

    return-void
.end method
