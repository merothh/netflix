.class public final Lo/FontConfig;
.super Lo/UtteranceProgressListener;
.source ""


# instance fields
.field private final b:I

.field private final c:I

.field private final e:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;IIILcom/netflix/cl/model/InputKind;Lcom/netflix/cl/model/AppView;I)V
    .locals 6

    const-string v0, "inputKind"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewType"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    .line 34
    invoke-direct/range {v0 .. v5}, Lo/UtteranceProgressListener;-><init>(ILjava/lang/Integer;Lcom/netflix/cl/model/InputKind;Lcom/netflix/cl/model/AppView;I)V

    iput p3, p0, Lo/FontConfig;->c:I

    iput p4, p0, Lo/FontConfig;->b:I

    iput p5, p0, Lo/FontConfig;->e:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 29
    iget v0, p0, Lo/FontConfig;->b:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 30
    iget v0, p0, Lo/FontConfig;->e:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 28
    iget v0, p0, Lo/FontConfig;->c:I

    return v0
.end method
