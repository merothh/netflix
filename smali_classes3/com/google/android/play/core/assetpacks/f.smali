.class final synthetic Lcom/google/android/play/core/assetpacks/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# static fields
.field static final a:Lcom/google/android/play/core/tasks/OnFailureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/f;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/f;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/f;->a:Lcom/google/android/play/core/tasks/OnFailureListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
