.class public abstract Lcom/google/android/gms/internal/zzlr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static zzadc:Lcom/google/android/gms/internal/zzlr$zza;

.field private static zzadd:I

.field private static zzade:Ljava/lang/String;

.field private static final zzpy:Ljava/lang/Object;


# instance fields
.field private zzOX:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final zzue:Ljava/lang/String;

.field protected final zzuf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlr;->zzpy:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzlr;->zzadc:Lcom/google/android/gms/internal/zzlr$zza;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/zzlr;->zzadd:I

    const-string/jumbo v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Lcom/google/android/gms/internal/zzlr;->zzade:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzOX:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlr;->zzue:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlr;->zzuf:Ljava/lang/Object;

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzlr;->zzadc:Lcom/google/android/gms/internal/zzlr$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzlr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/internal/zzlr",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlr$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlr$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzlr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/internal/zzlr",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlr$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlr$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zzoo()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/zzlr;->zzadd:I

    return v0
.end method

.method static synthetic zzoq()Lcom/google/android/gms/internal/zzlr$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzlr;->zzadc:Lcom/google/android/gms/internal/zzlr$zza;

    return-object v0
.end method

.method public static zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzlr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlr$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlr$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzOX:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzOX:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlr;->zzbY(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract zzbY(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
