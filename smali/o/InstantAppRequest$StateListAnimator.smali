.class final Lo/InstantAppRequest$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CharArrayReader$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstantAppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/CharArrayReader$Activity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lo/InstantAppRequest$ActionBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstantAppRequest$ActionBar<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lo/InstantAppRequest$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstantAppRequest$TaskDescription<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;Lo/InstantAppRequest$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CharArrayReader$Activity<",
            "TT;>;",
            "Lo/InstantAppRequest$ActionBar<",
            "TT;>;",
            "Lo/InstantAppRequest$TaskDescription<",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lo/InstantAppRequest$StateListAnimator;->b:Lo/CharArrayReader$Activity;

    .line 151
    iput-object p2, p0, Lo/InstantAppRequest$StateListAnimator;->c:Lo/InstantAppRequest$ActionBar;

    .line 152
    iput-object p3, p0, Lo/InstantAppRequest$StateListAnimator;->e:Lo/InstantAppRequest$TaskDescription;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lo/InstantAppRequest$StateListAnimator;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lo/InstantAppRequest$StateListAnimator;->c:Lo/InstantAppRequest$ActionBar;

    invoke-interface {v0}, Lo/InstantAppRequest$ActionBar;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    .line 160
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    instance-of v1, v0, Lo/InstantAppRequest$Application;

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    check-cast v1, Lo/InstantAppRequest$Application;

    invoke-interface {v1}, Lo/InstantAppRequest$Application;->a_()Lo/IntentFilterVerificationInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/IntentFilterVerificationInfo;->c(Z)V

    :cond_1
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 172
    instance-of v0, p1, Lo/InstantAppRequest$Application;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p1

    check-cast v0, Lo/InstantAppRequest$Application;

    invoke-interface {v0}, Lo/InstantAppRequest$Application;->a_()Lo/IntentFilterVerificationInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/IntentFilterVerificationInfo;->c(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Lo/InstantAppRequest$StateListAnimator;->e:Lo/InstantAppRequest$TaskDescription;

    invoke-interface {v0, p1}, Lo/InstantAppRequest$TaskDescription;->a(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lo/InstantAppRequest$StateListAnimator;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0, p1}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
