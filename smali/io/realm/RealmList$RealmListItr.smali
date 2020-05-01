.class Lio/realm/RealmList$RealmListItr;
.super Lio/realm/RealmList$RealmItr;
.source "RealmList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/RealmList",
        "<TE;>.RealmItr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmList;


# direct methods
.method constructor <init>(Lio/realm/RealmList;I)V
    .locals 3

    .prologue
    .line 866
    iput-object p1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V

    .line 867
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 868
    iput p2, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    .line 872
    return-void

    .line 870
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]. Index was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget-object v0, v0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 937
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 939
    :try_start_0
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    .line 940
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0, p1}, Lio/realm/RealmList;->add(ILio/realm/RealmModel;)V

    .line 941
    const/4 v1, -0x1

    iput v1, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I

    .line 942
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    .line 943
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$500(Lio/realm/RealmList;)I

    move-result v0

    iput v0, p0, Lio/realm/RealmList$RealmListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 945
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 864
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmList$RealmListItr;->add(Lio/realm/RealmModel;)V

    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    return v0
.end method

.method public previous()Lio/realm/RealmModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 886
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 888
    :try_start_0
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    .line 889
    iput v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    iput v0, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    return-object v1

    .line 891
    :catch_0
    move-exception v1

    .line 892
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 893
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot access index less than zero. This was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 864
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->previous()Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget-object v0, v0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 916
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I

    if-gez v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 919
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 922
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget v1, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmList;->set(ILio/realm/RealmModel;)Lio/realm/RealmModel;

    .line 923
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$400(Lio/realm/RealmList;)I

    move-result v0

    iput v0, p0, Lio/realm/RealmList$RealmListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 864
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmList$RealmListItr;->set(Lio/realm/RealmModel;)V

    return-void
.end method
