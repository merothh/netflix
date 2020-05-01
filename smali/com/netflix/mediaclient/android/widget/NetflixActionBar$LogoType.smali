.class public final enum Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

.field public static final enum b:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

.field public static final enum c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

.field public static final enum e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    const/4 v2, 0x0

    const-string v3, "START_ALIGNED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    const/4 v2, 0x1

    const-string v3, "START_MONOCHROME"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->b:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    const/4 v2, 0x2

    const-string v3, "CENTERED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    const/4 v2, 0x3

    const-string v3, "START_N_RIBBON"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->d:[Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->d:[Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    return-object v0
.end method
