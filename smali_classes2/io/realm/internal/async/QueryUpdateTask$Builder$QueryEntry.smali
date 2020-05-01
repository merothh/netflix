.class Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"


# instance fields
.field final element:Ljava/lang/ref/WeakReference;

.field handoverQueryPointer:J

.field final queryArguments:Lio/realm/internal/async/ArgumentsHolder;


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->element:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    iput-object p4, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;Lio/realm/internal/async/QueryUpdateTask$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;-><init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)V

    return-void
.end method
