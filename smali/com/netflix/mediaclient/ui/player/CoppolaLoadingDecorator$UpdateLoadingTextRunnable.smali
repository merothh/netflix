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

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->title:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->bShow:Z

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->seasonNumberLabel:Ljava/lang/String;

    iput p5, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->episodeNumber:I

    iput-boolean p6, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->isNSRE:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->title:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->bShow:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->seasonNumberLabel:Ljava/lang/String;

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->episodeNumber:I

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;->isNSRE:Z

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$900(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Ljava/lang/String;ZLjava/lang/String;IZ)V

    return-void
.end method
