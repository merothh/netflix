.class public final Lo/UU$Configuration;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/UU$Configuration;->c:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lo/UU$Configuration;->c:Z

    return v0
.end method
