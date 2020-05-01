.class final Lo/PL$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PL;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lio/reactivex/Observable;
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
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final b:Lo/PL$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/PL$Activity;

    invoke-direct {v0}, Lo/PL$Activity;-><init>()V

    sput-object v0, Lo/PL$Activity;->b:Lo/PL$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/Zx$TaskDescription;

    invoke-virtual {p0, p1}, Lo/PL$Activity;->b(Lo/Zx$TaskDescription;)Lo/Ph$LoaderManager;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo/Zx$TaskDescription;)Lo/Ph$LoaderManager;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lo/Ph$LoaderManager;

    invoke-virtual {p1}, Lo/Zx$TaskDescription;->a()Lo/Bc;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/Ph$LoaderManager;-><init>(Lo/Bc;)V

    return-object v0
.end method
