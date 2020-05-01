.class public final Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Lo/AnticipateInterpolator;->r()Lo/Hyphenator;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Hyphenator;->d()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->c(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;Z)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Lo/AnticipateInterpolator;->p()Lo/DateUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/DateUtils;->b()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Lo/AnticipateInterpolator;->q()Lo/TextUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/TextUtils;->b()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->b(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->d(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    :cond_1
    return-void
.end method
