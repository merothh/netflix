.class public final Lo/SpellCheckerService;
.super Lo/AbstractSynthesisCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AbstractSynthesisCallback<",
        "Lo/TrustAgentService;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private final d:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lo/AbstractSynthesisCallback;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    iput-object p2, p0, Lo/SpellCheckerService;->d:Lo/InputBinding;

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lo/SpellCheckerService;->b:Ljava/lang/String;

    return-void
.end method

.method private final d(Lo/TrustAgentService;Landroid/view/View$OnClickListener;)V
    .locals 10

    .line 35
    invoke-virtual {p0}, Lo/SpellCheckerService;->j()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/SpellCheckerService;->d:Lo/InputBinding;

    invoke-virtual {p1, v1}, Lo/TrustAgentService;->a(Lo/InputBinding;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p1}, Lo/TrustAgentService;->c()Lo/FileSynthesisCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/FileSynthesisCallback;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/TrustAgentService;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lo/SpellCheckerService;->d:Lo/InputBinding;

    invoke-virtual {p1, v0, v1}, Lo/TrustAgentService;->a(Ljava/util/List;Lo/InputBinding;)Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ltz v2, :cond_1

    const/4 v4, 0x0

    .line 41
    :goto_0
    new-instance v5, Landroid/widget/RadioButton;

    .line 42
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 43
    iget-object v7, p0, Lo/SpellCheckerService;->itemView:Landroid/view/View;

    const-string v8, "itemView"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 44
    sget v9, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->e:I

    .line 42
    invoke-direct {v6, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v6, Landroid/content/Context;

    .line 41
    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v6, p0, Lo/SpellCheckerService;->itemView:Landroid/view/View;

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$Application;->u:I

    invoke-static {v6, v7}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lo/TrustAgentService;->c()Lo/FileSynthesisCallback;

    move-result-object v6

    invoke-interface {v6}, Lo/FileSynthesisCallback;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v5, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 52
    :cond_0
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 53
    invoke-virtual {v5, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lo/SpellCheckerService;->c()Landroid/widget/RadioGroup;

    move-result-object v6

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    if-eq v4, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lo/SpellCheckerService;->c()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance p2, Lo/SpellCheckerService$ActionBar;

    invoke-direct {p2, p0, v0}, Lo/SpellCheckerService$ActionBar;-><init>(Lo/SpellCheckerService;Ljava/util/List;)V

    check-cast p2, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/SpellCheckerService;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic b(Lo/AndroidCharacter;)V
    .locals 0

    .line 12
    check-cast p1, Lo/TrustAgentService;

    invoke-virtual {p0, p1}, Lo/SpellCheckerService;->c(Lo/TrustAgentService;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lo/SpellCheckerService;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Lo/TrustAgentService;)V
    .locals 3

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/AbstractSynthesisCallback;->b(Lo/AndroidCharacter;)V

    .line 23
    new-instance v0, Lo/SpellCheckerService$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/SpellCheckerService$TaskDescription;-><init>(Lo/SpellCheckerService;Lo/TrustAgentService;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 28
    invoke-virtual {p0}, Lo/SpellCheckerService;->c()Landroid/widget/RadioGroup;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 29
    invoke-virtual {p0}, Lo/SpellCheckerService;->c()Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-direct {p0, p1, v0}, Lo/SpellCheckerService;->d(Lo/TrustAgentService;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
