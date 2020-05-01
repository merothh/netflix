.class public final Lo/ByteBufferFactory;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/InputBinding;

.field private final e:Lo/ApkVerityBuilder;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/ApkVerityBuilder;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ByteBufferFactory;->b:Lo/InputBinding;

    iput-object p2, p0, Lo/ByteBufferFactory;->e:Lo/ApkVerityBuilder;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lo/ByteBufferFactory;->e:Lo/ApkVerityBuilder;

    invoke-virtual {v0}, Lo/ApkVerityBuilder;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resendCodeAction"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lo/ByteBufferFactory;->b:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lM:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
