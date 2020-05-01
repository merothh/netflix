.class Lo/MarshalRegistry$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MarshalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lo/MarshalRegistry$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MarshalRegistry$TaskDescription<",
            "TI;>;"
        }
    .end annotation
.end field

.field b:Lo/MarshalRegistry$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MarshalRegistry$TaskDescription<",
            "TI;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TI;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method private constructor <init>(Lo/MarshalRegistry$TaskDescription;ILjava/util/LinkedList;Lo/MarshalRegistry$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MarshalRegistry$TaskDescription<",
            "TI;>;I",
            "Ljava/util/LinkedList<",
            "TI;>;",
            "Lo/MarshalRegistry$TaskDescription<",
            "TI;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/MarshalRegistry$TaskDescription;->a:Lo/MarshalRegistry$TaskDescription;

    .line 35
    iput p2, p0, Lo/MarshalRegistry$TaskDescription;->d:I

    .line 36
    iput-object p3, p0, Lo/MarshalRegistry$TaskDescription;->c:Ljava/util/LinkedList;

    .line 37
    iput-object p4, p0, Lo/MarshalRegistry$TaskDescription;->b:Lo/MarshalRegistry$TaskDescription;

    return-void
.end method

.method synthetic constructor <init>(Lo/MarshalRegistry$TaskDescription;ILjava/util/LinkedList;Lo/MarshalRegistry$TaskDescription;Lo/MarshalRegistry$4;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lo/MarshalRegistry$TaskDescription;-><init>(Lo/MarshalRegistry$TaskDescription;ILjava/util/LinkedList;Lo/MarshalRegistry$TaskDescription;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkedEntry(key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MarshalRegistry$TaskDescription;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
