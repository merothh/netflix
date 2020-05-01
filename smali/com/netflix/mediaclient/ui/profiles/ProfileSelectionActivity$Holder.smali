.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;
.super Ljava/lang/Object;
.source "ProfileSelectionActivity.java"


# instance fields
.field private final img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private final title:Landroid/widget/TextView;

.field private final topEditImg:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->title:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->topEditImg:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->topEditImg:Landroid/view/View;

    return-object v0
.end method
