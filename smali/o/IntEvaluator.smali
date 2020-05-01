.class public Lo/IntEvaluator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Lo/IntEvaluator;


# instance fields
.field private final e:Lo/CharacterStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharacterStyle<",
            "Ljava/lang/String;",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/IntEvaluator;

    invoke-direct {v0}, Lo/IntEvaluator;-><init>()V

    sput-object v0, Lo/IntEvaluator;->d:Lo/IntEvaluator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lo/CharacterStyle;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lo/CharacterStyle;-><init>(I)V

    iput-object v0, p0, Lo/IntEvaluator;->e:Lo/CharacterStyle;

    return-void
.end method

.method public static c()Lo/IntEvaluator;
    .locals 1

    .line 16
    sget-object v0, Lo/IntEvaluator;->d:Lo/IntEvaluator;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Lo/DESedeKeySpec;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lo/IntEvaluator;->e:Lo/CharacterStyle;

    invoke-virtual {v0, p1, p2}, Lo/CharacterStyle;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;)Lo/DESedeKeySpec;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lo/IntEvaluator;->e:Lo/CharacterStyle;

    invoke-virtual {v0, p1}, Lo/CharacterStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/DESedeKeySpec;

    return-object p1
.end method
