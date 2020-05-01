.class public final Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebMessagePort;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/OfPrimitive;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/WebMessagePort;


# direct methods
.method public constructor <init>(Lo/WebMessagePort;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$3;->a:Lo/WebMessagePort;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/OfPrimitive;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$3;->a:Lo/WebMessagePort;

    invoke-virtual {v0, p1}, Lo/WebMessagePort;->b(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lo/OfPrimitive;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$3;->d(Lo/OfPrimitive;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
