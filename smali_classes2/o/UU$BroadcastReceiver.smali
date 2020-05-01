.class public final Lo/UU$BroadcastReceiver;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field private final b:Z

.field private final e:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/UU$BroadcastReceiver;->e:Z

    iput-boolean p2, p0, Lo/UU$BroadcastReceiver;->b:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/UU$BroadcastReceiver;->b:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/UU$BroadcastReceiver;->e:Z

    return v0
.end method
