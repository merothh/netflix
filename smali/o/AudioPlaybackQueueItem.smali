.class public final Lo/AudioPlaybackQueueItem;
.super Lo/AbstractSynthesisCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AbstractSynthesisCallback<",
        "Lo/RecognitionListener;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private b:Ljava/lang/String;

.field private final d:Lo/InputBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/AudioPlaybackQueueItem;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "linearLayout"

    const-string v4, "getLinearLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/AudioPlaybackQueueItem;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lo/AbstractSynthesisCallback;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    iput-object p2, p0, Lo/AudioPlaybackQueueItem;->d:Lo/InputBinding;

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lo/AudioPlaybackQueueItem;->b:Ljava/lang/String;

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->lM:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/AudioPlaybackQueueItem;->a:Lo/ams;

    return-void
.end method

.method private final d(Lo/RecognitionListener;Landroid/view/View$OnClickListener;)V
    .locals 9

    .line 53
    invoke-virtual {p1}, Lo/RecognitionListener;->c()Lo/FileSynthesisCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/FileSynthesisCallback;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/RecognitionListener;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1

    const/4 v3, 0x0

    .line 56
    :goto_0
    new-instance v4, Landroid/widget/RadioButton;

    .line 57
    new-instance v5, Landroid/view/ContextThemeWrapper;

    .line 58
    iget-object v6, p0, Lo/AudioPlaybackQueueItem;->itemView:Landroid/view/View;

    const-string v7, "itemView"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 59
    sget v8, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->q:I

    .line 57
    invoke-direct {v5, v6, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v5, Landroid/content/Context;

    .line 56
    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v5, p0, Lo/AudioPlaybackQueueItem;->itemView:Landroid/view/View;

    invoke-static {v5, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    invoke-static {v5, v6}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p1}, Lo/RecognitionListener;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 67
    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setId(I)V

    .line 68
    invoke-virtual {v4, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->c()Landroid/widget/RadioGroup;

    move-result-object v5

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->c()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance p2, Lo/AudioPlaybackQueueItem$Application;

    invoke-direct {p2, p0, v0}, Lo/AudioPlaybackQueueItem$Application;-><init>(Lo/AudioPlaybackQueueItem;Ljava/util/List;)V

    check-cast p2, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lo/AudioPlaybackQueueItem;->a:Lo/ams;

    sget-object v1, Lo/AudioPlaybackQueueItem;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/AudioPlaybackQueueItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic b(Lo/AndroidCharacter;)V
    .locals 0

    .line 15
    check-cast p1, Lo/RecognitionListener;

    invoke-virtual {p0, p1}, Lo/AudioPlaybackQueueItem;->c(Lo/RecognitionListener;)V

    return-void
.end method

.method public c(Lo/RecognitionListener;)V
    .locals 3

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/AbstractSynthesisCallback;->b(Lo/AndroidCharacter;)V

    .line 28
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->c()Landroid/widget/RadioGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 30
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 32
    new-instance v0, Lo/AudioPlaybackQueueItem$Activity;

    invoke-direct {v0, p0, p1}, Lo/AudioPlaybackQueueItem$Activity;-><init>(Lo/AudioPlaybackQueueItem;Lo/RecognitionListener;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 38
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->c()Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 39
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->c()Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->c()Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-direct {p0, p1, v0}, Lo/AudioPlaybackQueueItem;->d(Lo/RecognitionListener;Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->j()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lo/AudioPlaybackQueueItem;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lo/AudioPlaybackQueueItem;->b:Ljava/lang/String;

    return-void
.end method
