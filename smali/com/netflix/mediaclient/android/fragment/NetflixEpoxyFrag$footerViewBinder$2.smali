.class public final Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;
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
        "Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;->e:Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;->c(Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
