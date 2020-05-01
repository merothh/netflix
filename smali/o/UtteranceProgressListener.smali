.class public Lo/UtteranceProgressListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/cl/model/InputKind;

.field private final b:I

.field private final c:Ljava/lang/Integer;

.field private final d:I

.field private final e:Lcom/netflix/cl/model/AppView;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Lcom/netflix/cl/model/InputKind;Lcom/netflix/cl/model/AppView;I)V
    .locals 1

    const-string v0, "inputKind"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewType"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/UtteranceProgressListener;->d:I

    iput-object p2, p0, Lo/UtteranceProgressListener;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lo/UtteranceProgressListener;->a:Lcom/netflix/cl/model/InputKind;

    iput-object p4, p0, Lo/UtteranceProgressListener;->e:Lcom/netflix/cl/model/AppView;

    iput p5, p0, Lo/UtteranceProgressListener;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/UtteranceProgressListener;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final b()Lcom/netflix/cl/model/InputKind;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/UtteranceProgressListener;->a:Lcom/netflix/cl/model/InputKind;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 19
    iget v0, p0, Lo/UtteranceProgressListener;->b:I

    return v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/UtteranceProgressListener;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 15
    iget v0, p0, Lo/UtteranceProgressListener;->d:I

    return v0
.end method
