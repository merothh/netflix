.class public final Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UK;-><init>(Lio/reactivex/Observable;)V
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
.field public static final e:Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;->e:Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "PlayerRepository No Interactive data found"

    .line 55
    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$2;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
