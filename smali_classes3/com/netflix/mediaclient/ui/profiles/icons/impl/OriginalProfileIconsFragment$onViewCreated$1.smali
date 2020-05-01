.class public final Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zp;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Serializable;",
        "Lo/PooledStringWriter;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Zp;


# direct methods
.method public constructor <init>(Lo/Zp;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$onViewCreated$1;->d:Lo/Zp;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Serializable;Lo/PooledStringWriter;)V
    .locals 2

    const-string v0, "act"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomoConfig"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$onViewCreated$1;->d:Lo/Zp;

    invoke-static {v0}, Lo/Zp;->e(Lo/Zp;)Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object v0

    new-instance v1, Lo/ParcelUuid;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v1, p1, p2}, Lo/ParcelUuid;-><init>(Landroid/app/Activity;Lo/PooledStringWriter;)V

    check-cast v1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lo/Serializable;

    check-cast p2, Lo/PooledStringWriter;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$onViewCreated$1;->d(Lo/Serializable;Lo/PooledStringWriter;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
