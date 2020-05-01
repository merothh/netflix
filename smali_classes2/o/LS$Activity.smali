.class final Lo/LS$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecoverySystem$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/LS;


# direct methods
.method constructor <init>(Lo/LS;)V
    .locals 0

    iput-object p1, p0, Lo/LS$Activity;->e:Lo/LS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 1

    .line 85
    sget-object v0, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 86
    iget-object v0, p0, Lo/LS$Activity;->e:Lo/LS;

    invoke-virtual {v0}, Lo/LS;->d()Lo/LQ;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lo/LQ;->a(Z)V

    return-void
.end method
