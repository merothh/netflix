.class final Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->e:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->d:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    new-instance v8, Lo/Build$Cursor;

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    .line 166
    invoke-direct/range {v2 .. v7}, Lo/Build$Cursor;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILo/amc;)V

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const-string v2, "isInSkipIntroWindow"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 175
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->e:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lo/Build$ColorStateList;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v1, Lo/Build$PackageItemInfo;

    const-string v2, "skipIntroText"

    .line 178
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    :goto_0
    const-string v4, "skipIntroType"

    .line 179
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v3, v4

    .line 176
    :cond_2
    invoke-direct {v1, p1, v2, v3}, Lo/Build$PackageItemInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V

    check-cast v1, Lo/Build$BroadcastReceiver;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->e:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lo/Build$PackageItemInfo;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Lo/Build$ColorStateList;

    invoke-direct {v1, p1}, Lo/Build$ColorStateList;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/Build$BroadcastReceiver;

    .line 173
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v0, "currentState"

    .line 189
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->d:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/Build$Resources;

    const-string v3, "state"

    .line 193
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {v2, p1, v0}, Lo/Build$Resources;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lo/Build$SQLiteDatabase;

    const-string v2, "volume"

    .line 200
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 198
    invoke-direct {v1, p1, p2}, Lo/Build$SQLiteDatabase;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 184
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
