.class public final Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterView;->d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;->a:Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object p1, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;->e(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method