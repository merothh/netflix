.class final Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/MaybeSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;->e(Ljava/lang/Boolean;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Boolean;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p1, Lo/NfcActivityManager;

    invoke-direct {p1}, Lo/NfcActivityManager;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NfcActivityManager;->b(Ljava/lang/String;)Lo/NfcActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lo/NfcActivityManager;->c()Lo/NfcActivityManager$Activity;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;)Lo/ErrorCodes;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ErrorCodes;->b(Lo/NfcActivityManager$Activity;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toMaybe()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
