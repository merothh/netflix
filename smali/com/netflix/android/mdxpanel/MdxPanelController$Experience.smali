.class public final enum Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Experience"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

.field public static final enum c:Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

.field public static final enum d:Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    .line 88
    sget v2, Lo/CancellationSignal$Application;->a:I

    const/4 v3, 0x0

    const-string v4, "CLASSIC"

    invoke-direct {v1, v4, v3, v2}, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->d:Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    .line 89
    sget v2, Lo/CancellationSignal$Application;->c:I

    const/4 v3, 0x1

    const-string v4, "BACKWARD_FORWARD_DEBOUNCE"

    invoke-direct {v1, v4, v3, v2}, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->b:[Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;
    .locals 1

    const-class v0, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    return-object p0
.end method

.method public static values()[Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;
    .locals 1

    sget-object v0, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->b:[Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    invoke-virtual {v0}, [Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->a:I

    return v0
.end method
