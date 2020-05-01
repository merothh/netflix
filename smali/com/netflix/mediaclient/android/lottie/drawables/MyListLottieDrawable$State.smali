.class public final enum Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/WebViewClient$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;",
        ">;",
        "Lo/WebViewClient$Application;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

.field private static final synthetic b:[Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

.field public static final enum c:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

.field public static final enum d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;


# instance fields
.field private final e:Ljava/lang/Integer;

.field private final h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    new-instance v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "UNKNOWN"

    .line 20
    invoke-direct {v1, v4, v3, v2, v2}, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lo/IHwInterface$TaskDescription;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "PLUS"

    invoke-direct {v1, v5, v4, v2, v3}, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->a:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    aput-object v1, v0, v4

    new-instance v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    const/16 v2, 0x1f

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lo/IHwInterface$TaskDescription;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "CHECK"

    invoke-direct {v1, v5, v4, v2, v3}, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->b:[Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->h:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->b:[Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->h:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State$TaskDescription;-><init>(Landroid/graphics/drawable/Drawable;I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->e:Ljava/lang/Integer;

    return-object v0
.end method
