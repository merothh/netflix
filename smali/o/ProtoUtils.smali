.class public final Lo/ProtoUtils;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lo/EncodedBuffer;

.field private final h:Lo/ZipUtils;

.field private final i:Lo/TextClassificationSessionFactory;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/InputBinding;Ljava/util/List;Lo/EncodedBuffer;Lo/ZipUtils;Lo/TextClassificationSessionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            "Lo/InputBinding;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/EncodedBuffer;",
            "Lo/ZipUtils;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textMeRequestLogger"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p3, p2}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p4, p0, Lo/ProtoUtils;->a:Ljava/util/List;

    iput-object p5, p0, Lo/ProtoUtils;->f:Lo/EncodedBuffer;

    iput-object p6, p0, Lo/ProtoUtils;->h:Lo/ZipUtils;

    iput-object p7, p0, Lo/ProtoUtils;->i:Lo/TextClassificationSessionFactory;

    .line 28
    iget-object p1, p0, Lo/ProtoUtils;->f:Lo/EncodedBuffer;

    invoke-virtual {p1}, Lo/EncodedBuffer;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/ProtoUtils;->b:Z

    .line 33
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ar:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ProtoUtils;->e:Ljava/lang/String;

    .line 35
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ax:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ProtoUtils;->d:Ljava/lang/String;

    .line 37
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pU:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ProtoUtils;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/ProtoUtils;->b:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .line 25
    iget-object v0, p0, Lo/ProtoUtils;->f:Lo/EncodedBuffer;

    invoke-virtual {v0}, Lo/EncodedBuffer;->b()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/ProtoUtils;->i()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/ProtoUtils;->i:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/ProtoUtils;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/ProtoUtils;->a:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/ProtoUtils;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/ProtoUtils;->c:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/ProtoUtils;->h:Lo/ZipUtils;

    invoke-virtual {v0}, Lo/ZipUtils;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/ProtoUtils;->d:Ljava/lang/String;

    return-object v0
.end method
