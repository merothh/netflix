.class public final Lo/DK$ActionBar;
.super Lo/DK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lo/DK;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DK$ActionBar;->b:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lo/DK$ActionBar;->b:Z

    return v0
.end method
