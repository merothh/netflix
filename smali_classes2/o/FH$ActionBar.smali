.class public final Lo/FH$ActionBar;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/FH$ActionBar;->a:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/FH$ActionBar;->a:Z

    return v0
.end method
