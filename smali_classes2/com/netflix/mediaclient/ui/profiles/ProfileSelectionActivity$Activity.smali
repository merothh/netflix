.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lo/BaseAdapter;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/BaseAdapter;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a:Landroid/view/ViewGroup;

    .line 904
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->b:Lo/BaseAdapter;

    .line 905
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->d:Landroid/widget/TextView;

    .line 906
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->e:Landroid/view/View;

    .line 907
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Lo/BaseAdapter;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->b:Lo/BaseAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/widget/TextView;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/ViewGroup;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->e:Landroid/view/View;

    return-object p0
.end method
