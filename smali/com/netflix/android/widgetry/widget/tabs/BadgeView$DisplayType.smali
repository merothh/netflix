.class public final enum Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/widgetry/widget/tabs/BadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

.field public static final enum b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

.field private static final synthetic c:[Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

.field public static final enum d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

.field public static final enum e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    const/4 v1, 0x0

    const-string v2, "DOT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 56
    new-instance v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 57
    new-instance v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    const/4 v3, 0x2

    const-string v4, "PROGRESS"

    invoke-direct {v0, v4, v3}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 58
    new-instance v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    const/4 v4, 0x3

    const-string v5, "DRAWABLE"

    invoke-direct {v0, v5, v4}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 54
    sget-object v5, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->c:[Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;
    .locals 1

    .line 54
    const-class v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;
    .locals 1

    .line 54
    sget-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->c:[Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0}, [Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    return-object v0
.end method
