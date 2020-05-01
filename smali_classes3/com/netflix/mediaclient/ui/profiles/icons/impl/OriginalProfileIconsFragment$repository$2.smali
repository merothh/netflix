.class public final Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$repository$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/Zq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Zp;


# direct methods
.method public constructor <init>(Lo/Zp;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$repository$2;->a:Lo/Zp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lo/Zq;
    .locals 3

    .line 51
    new-instance v0, Lo/Zq;

    .line 52
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$repository$2;->a:Lo/Zp;

    invoke-static {v1}, Lo/Zp;->b(Lo/Zp;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "mFragDestroy"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {v0, v1}, Lo/Zq;-><init>(Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$repository$2;->c()Lo/Zq;

    move-result-object v0

    return-object v0
.end method
