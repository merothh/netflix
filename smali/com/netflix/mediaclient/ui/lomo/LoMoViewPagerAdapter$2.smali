.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "LoMoViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->reload()V

    return-void
.end method
