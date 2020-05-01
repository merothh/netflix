.class final Lo/SpellCheckerService$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SpellCheckerService;->c(Lo/TrustAgentService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TrustAgentService;

.field final synthetic b:Lo/SpellCheckerService;


# direct methods
.method constructor <init>(Lo/SpellCheckerService;Lo/TrustAgentService;)V
    .locals 0

    iput-object p1, p0, Lo/SpellCheckerService$TaskDescription;->b:Lo/SpellCheckerService;

    iput-object p2, p0, Lo/SpellCheckerService$TaskDescription;->a:Lo/TrustAgentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lo/SpellCheckerService$TaskDescription;->a:Lo/TrustAgentService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/TrustAgentService;->setShowValidationState(Z)V

    .line 25
    iget-object p1, p0, Lo/SpellCheckerService$TaskDescription;->a:Lo/TrustAgentService;

    invoke-virtual {p1}, Lo/TrustAgentService;->c()Lo/FileSynthesisCallback;

    move-result-object p1

    iget-object v0, p0, Lo/SpellCheckerService$TaskDescription;->b:Lo/SpellCheckerService;

    invoke-virtual {v0}, Lo/SpellCheckerService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/FileSynthesisCallback;->b(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lo/SpellCheckerService$TaskDescription;->a:Lo/TrustAgentService;

    invoke-virtual {p1}, Lo/TrustAgentService;->c()Lo/FileSynthesisCallback;

    move-result-object p1

    iget-object v0, p0, Lo/SpellCheckerService$TaskDescription;->b:Lo/SpellCheckerService;

    invoke-virtual {v0}, Lo/SpellCheckerService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/FileSynthesisCallback;->e(Ljava/lang/String;)V

    return-void
.end method
