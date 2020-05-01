.class public final Lo/Lz$ActionBar;
.super Lo/Lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lo/Lz;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/Lz$ActionBar;->e:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lo/Lz$ActionBar;->e:Z

    return v0
.end method
