.class final Lo/Nc$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nc;->e(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lo/Nc$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Nc$TaskDescription;

    invoke-direct {v0}, Lo/Nc$TaskDescription;-><init>()V

    sput-object v0, Lo/Nc$TaskDescription;->a:Lo/Nc$TaskDescription;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lo/Nc$TaskDescription;->b(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lo/CharConversionException;->c(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lo/ane;->c(Ljava/util/Iterator;)Lo/anb;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lo/ane;->d(Lo/anb;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
