.class public Lo/ku;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

.field protected b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field private final f:Ljava/lang/String;

.field private h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lo/ku;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ku;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;I)V
    .locals 0

    .line 30
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;ILcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V
    .locals 6

    .line 38
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)V
    .locals 6

    .line 34
    sget-object v5, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSCR-S"

    .line 25
    iput-object v0, p0, Lo/ku;->f:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object p5, p0, Lo/ku;->h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/ku;->d:Ljava/lang/String;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    iput-object p1, p0, Lo/ku;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    .line 48
    iget-object p1, p0, Lo/ku;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 51
    iput-object p3, p0, Lo/ku;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 52
    iget-object p1, p0, Lo/ku;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    iput-object p1, p0, Lo/ku;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 57
    iget-object p1, p0, Lo/ku;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    :goto_0
    invoke-static {p4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    iput-object p4, p0, Lo/ku;->j:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lo/ku;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    iget-object p1, p0, Lo/ku;->h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    if-eq p1, p2, :cond_3

    .line 67
    iget-object p1, p0, Lo/ku;->h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ku;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/ku;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/ku;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ku;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/ku;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/ku;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MdxError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ku;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ku;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
