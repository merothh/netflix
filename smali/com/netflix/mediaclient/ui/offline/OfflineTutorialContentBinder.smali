.class public Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;
.super Ljava/lang/Object;
.source "OfflineTutorialContentBinder.java"


# instance fields
.field private body:Ljava/lang/String;

.field private closeButton:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private nextButton:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const v2, 0x7f080290

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getOfflineTutorial(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->mContext:Landroid/content/Context;

    .line 30
    const v1, 0x7f080292

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->header:Ljava/lang/String;

    .line 31
    const v1, 0x7f0801c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->closeButton:Ljava/lang/String;

    .line 32
    const v1, 0x7f080257

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->nextButton:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$3;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const v0, 0x7f08028e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->title:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->body:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_1
    const v0, 0x7f08028f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->title:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->body:Ljava/lang/String;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0f0259

    const v3, 0x7f0f0258

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    const v0, 0x7f0f0257

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->header:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f0f0145

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f0f0256

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->body:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->nextButton:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->closeButton:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$1;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$2;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-object v1
.end method
