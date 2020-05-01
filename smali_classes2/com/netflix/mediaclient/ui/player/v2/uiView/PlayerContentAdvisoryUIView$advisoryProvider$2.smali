.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WP;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;->a:Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lo/l;
    .locals 1

    .line 28
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 229
    const-class v0, Lo/l;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/l;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;->c()Lo/l;

    move-result-object v0

    return-object v0
.end method
