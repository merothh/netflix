.class public final Lo/DC$IntentSender;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentSender"
.end annotation


# instance fields
.field private final a:Z

.field private final c:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DC$IntentSender;->a:Z

    iput-boolean p2, p0, Lo/DC$IntentSender;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lo/DC$IntentSender;->c:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lo/DC$IntentSender;->a:Z

    return v0
.end method
