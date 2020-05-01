.class public final Lo/DC$ClipData;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipData"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput p1, p0, Lo/DC$ClipData;->b:I

    iput-object p2, p0, Lo/DC$ClipData;->d:Ljava/util/List;

    iput-object p3, p0, Lo/DC$ClipData;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/DC$ClipData;->a:Ljava/lang/String;

    iput p5, p0, Lo/DC$ClipData;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/DC$ClipData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 112
    iget v0, p0, Lo/DC$ClipData;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 108
    iget v0, p0, Lo/DC$ClipData;->b:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/DC$ClipData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/DC$ClipData;->d:Ljava/util/List;

    return-object v0
.end method
