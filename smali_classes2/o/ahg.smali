.class public Lo/ahg;
.super Lo/aht;
.source ""


# instance fields
.field private final b:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

.field private final c:Lo/ahs;

.field private d:Lo/ahe;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/aht;-><init>()V

    .line 14
    iput-object p1, p0, Lo/ahg;->b:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    .line 15
    iput-object p2, p0, Lo/ahg;->c:Lo/ahs;

    return-void
.end method


# virtual methods
.method protected b(I)Lo/ahp;
    .locals 1

    .line 43
    iget-object p1, p0, Lo/ahg;->d:Lo/ahe;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lo/ahe;->c()V

    .line 46
    iget-object p1, p0, Lo/ahg;->d:Lo/ahe;

    invoke-virtual {p1}, Lo/ahe;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 48
    :cond_1
    iget-object p1, p0, Lo/ahg;->d:Lo/ahe;

    invoke-virtual {p1}, Lo/ahe;->d()Lo/ahp;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 27
    iget-object v0, p0, Lo/ahg;->d:Lo/ahe;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lo/ahe;->close()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lo/ahg;->d:Lo/ahe;

    :cond_0
    return-void
.end method

.method public d(Ljava/io/InputStream;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lo/ahg;->d:Lo/ahe;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lo/ahe;->close()V

    .line 21
    :cond_0
    new-instance v0, Lo/ahe;

    iget-object v1, p0, Lo/ahg;->b:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v2, p0, Lo/ahg;->c:Lo/ahs;

    invoke-direct {v0, v1, v2, p1}, Lo/ahe;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;Ljava/io/InputStream;)V

    iput-object v0, p0, Lo/ahg;->d:Lo/ahe;

    return-void
.end method
