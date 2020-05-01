.class Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;
.super Ljava/lang/Object;
.source "CoppolaLoadingDecorator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bShow:Z

.field private final episodeNumber:I

.field private final isNSRE:Z

.field private final seasonNumberLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->title:Ljava/lang/String;

    .line 383
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->bShow:Z

    .line 384
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->seasonNumberLabel:Ljava/lang/String;

    .line 385
    iput p5, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->episodeNumber:I

    .line 386
    iput-boolean p6, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->isNSRE:Z

    .line 387
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->title:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->bShow:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->seasonNumberLabel:Ljava/lang/String;

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->episodeNumber:I

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->isNSRE:Z

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$900(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 392
    return-void
.end method
