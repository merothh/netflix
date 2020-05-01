.class public final Lcom/netflix/model/leafs/Bookmark$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/Bookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/netflix/model/leafs/Bookmark$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/netflix/model/leafs/Bookmark$Companion;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Bookmark$Companion;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/Bookmark$Companion;->$$INSTANCE:Lcom/netflix/model/leafs/Bookmark$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateProgress(IILjava/lang/Integer;)I
    .locals 0

    if-eqz p3, :cond_0

    .line 30
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
