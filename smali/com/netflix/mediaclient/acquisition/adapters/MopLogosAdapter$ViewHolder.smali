.class public final Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private final mopImageView$delegate:Lo/ams;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "mopImageView"

    const-string v4, "getMopImageView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 15
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kJ:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;->mopImageView$delegate:Lo/ams;

    return-void
.end method


# virtual methods
.method public final getMopImageView()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;->mopImageView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$ViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method
